using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Forms;
using System.Threading;

namespace AspMiniPrj
{
    public partial class Inputpage : System.Web.UI.Page
    {
        public string cd1, cc1, ip1;
        public static string opc, opd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class md5
        {
            public string hash = "f0xle@rn";
            public void enm1(string pt)
            {
                string en;
                byte[] data = UTF8Encoding.UTF8.GetBytes(pt);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripDes.CreateEncryptor();
                        byte[] result = transform.TransformFinalBlock(data, 0, data.Length);
                        en = Convert.ToBase64String(result, 0, result.Length);
                        opc = en;
                    }
                }
            }
            public void dem1(string ct)
            {
                string dm;
                byte[] data = Convert.FromBase64String(ct);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripDes.CreateDecryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        dm = UTF8Encoding.UTF8.GetString(results);
                        opd = dm;
                    }
                }
            }
        }
        class cc
        {
            private char Cipher(char ch, int key)
            {
                if (!char.IsLetter(ch))
                    return ch;

                char offset = char.IsUpper(ch) ? 'A' : 'a';
                return (char)((((ch + key) - offset) % 26) + offset);
            }

            public string Encipher(string input, int key)
            {
                string output = string.Empty;

                foreach (char ch in input)
                    output += Cipher(ch, key);

                //Console.WriteLine(output);
                return output;
            }

            public string Decipher(string input, int key)
            {
                string decipher = string.Empty;
                decipher = Encipher(input, 26 - key);
                //Console.WriteLine(decipher);
                return decipher;
            }
        }
        public class AtbashCipher
        {
            private const string Alphabet = "abcdefghijklmnopqrstuvwxyz";
            public string Encode(string plainValue)
            {
                string normalizedValue = plainValue.ToLower();
                StringBuilder encoded = new StringBuilder();
                foreach (char plainCharacter in normalizedValue)
                {
                    encoded.Append(Code(plainCharacter));
                }
                return Chunk(encoded.ToString());
            }
            public string Decode(string encodedValue)
            {
                StringBuilder decoded = new StringBuilder();
                foreach (char encodedCharacter in encodedValue)
                {
                    decoded.Append(Code(encodedCharacter));
                }
                return decoded.ToString();
            }
            private char? Code(char character)
            {
                if (char.IsDigit(character))
                {
                    return character;
                }
                int index = Alphabet.IndexOf(character);
                if (index < 0)
                {
                    return null;
                }
                return Alphabet[Alphabet.Length - index - 1];
            }
            private string Chunk(string spaceless)
            {
                StringBuilder chunked = new StringBuilder();
                for (int i = 0; i < spaceless.Length; i++)
                {
                    chunked.Append(spaceless[i]);
                    if ((i + 1) % 5 == 0)
                    {
                        chunked.Append(' ');
                    }
                }
                return chunked.ToString().Trim();
            }
        }
        private static string MonoalphabeticEncryption(string sPlainText, string key)
        {

            char[] cipherTextChars = new char[sPlainText.Length];

            for (int i = 0; i < sPlainText.Length; i++)
            {

                if (char.IsLetter(sPlainText[i]) == false)
                {

                    cipherTextChars[i] = sPlainText[i];

                }

                else
                {

                    int j = sPlainText[i] - 97;

                    cipherTextChars[i] = key[j];

                }

            }

            return new string(cipherTextChars);

        }

        public class AesOperation
        {
            public static string EncryptString(string key, string plainText)
            {
                byte[] iv = new byte[16];
                byte[] array;

                using (Aes aes = Aes.Create())
                {
                    aes.Key = Encoding.UTF8.GetBytes(key);
                    aes.IV = iv;

                    ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, encryptor, CryptoStreamMode.Write))
                        {
                            using (StreamWriter streamWriter = new StreamWriter((Stream)cryptoStream))
                            {
                                streamWriter.Write(plainText);
                            }

                            array = memoryStream.ToArray();
                        }
                    }
                }

                return Convert.ToBase64String(array);
            }

            public static string DecryptString(string key, string cipherText)
            {
                byte[] iv = new byte[16];
                byte[] buffer = Convert.FromBase64String(cipherText);

                using (Aes aes = Aes.Create())
                {
                    aes.Key = Encoding.UTF8.GetBytes(key);
                    aes.IV = iv;
                    ICryptoTransform decryptor = aes.CreateDecryptor(aes.Key, aes.IV);

                    using (MemoryStream memoryStream = new MemoryStream(buffer))
                    {
                        using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, decryptor, CryptoStreamMode.Read))
                        {
                            using (StreamReader streamReader = new StreamReader((Stream)cryptoStream))
                            {
                                return streamReader.ReadToEnd();
                            }
                        }
                    }
                }
            }
        }
        class vigenere
        {
            private static int Mod(int a, int b)
            {
                return (a % b + b) % b;
            }

            private static string Cipher(string input, string key, bool encipher)
            {
                for (int i = 0; i < key.Length; ++i)
                    if (!char.IsLetter(key[i]))
                        return null;

                string output = string.Empty;
                int nonAlphaCharCount = 0;

                for (int i = 0; i < input.Length; ++i)
                {
                    if (char.IsLetter(input[i]))
                    {
                        bool cIsUpper = char.IsUpper(input[i]);
                        char offset = cIsUpper ? 'A' : 'a';
                        int keyIndex = (i - nonAlphaCharCount) % key.Length;
                        int k = (cIsUpper ? char.ToUpper(key[keyIndex]) : char.ToLower(key[keyIndex])) - offset;
                        k = encipher ? k : -k;
                        char ch = (char)((Mod(((input[i] + k) - offset), 26)) + offset);
                        output += ch;
                    }
                    else
                    {
                        output += input[i];
                        ++nonAlphaCharCount;
                    }
                }

                return output;
            }

            public static string Encipher(string einput, string key)
            {
                return Cipher(einput, key, true);
            }

            public static string Decipher(string dinput, string key)
            {
                return Cipher(dinput, key, false);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            cdd.Visible = false;
            Label3.Visible = false;
            ccd.Visible = false;
            Label4.Text = "Your Output is: -";
            Button1.Visible = false;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = false;
            cd1 = cdd.Text;
            cc1 = ccd.Text;
            ip1 = tb.Text;
            tb.Enabled = false;


            if (cd1 == "Cipher")
            {
                if (cc1 == "MD5")
                {
                    md5 c = new md5();
                    c.enm1(ip1);
                    tb.Text = opc;

                }
                else if (cc1 == "Cea")
                {
                    cc c = new cc();
                    tb.Text = c.Encipher(ip1, 23);
                }
                else if (cc1 == "Atb")
                {
                    AtbashCipher c = new AtbashCipher();
                    tb.Text = c.Encode(ip1);
                }
                else if (cc1 == "AES")
                {
                    var key = "b14ca5898a4e4133bbce2ea2315a1916";
                    tb.Text = AesOperation.EncryptString(key, ip1);
                }
                else if (cc1 == "Vig")
                {
                    tb.Text = vigenere.Encipher(ip1, "moarchy");
                }
            }
            else if (cd1 == "Decipher")
            {
                if (cc1 == "MD5")
                {
                    md5 c = new md5();
                    c.dem1(ip1);
                    tb.Text = opd;
                }
                else if (cc1 == "Cea")
                {
                    cc c = new cc();
                    tb.Text = c.Decipher(ip1, 23);
                }
                else if (cc1 == "Atb")
                {
                    AtbashCipher c = new AtbashCipher();
                    tb.Text = c.Decode(ip1);
                }
                else if (cc1 == "AES")
                {
                    var key = "b14ca5898a4e4133bbce2ea2315a1916";
                    tb.Text = AesOperation.DecryptString(key, ip1);
                }
                else if (cc1 == "Vig")
                {
                    tb.Text = vigenere.Decipher(ip1, "moarchy");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(() => Clipboard.SetText(tb.Text));
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            thread.Join();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(() => tb.Text = Clipboard.GetText());
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            thread.Join(); 
        }
    }
}