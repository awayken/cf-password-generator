# cf-password-generator

> cf-password-generator is a tool for generating complex and secure passwords powered by ColdFusion.

This project was created and is maintained by [Lawrence & Schiller](http://www.l-s.com/). Read the [cf-password-generator blog post](http://www.ls-unscripted.com/index.php/2011/03/08/cf-password-generator/).

**cf-password-generator** is a tool for generating complex and secure passwords powered by ColdFusion. The user is presented with a simple form. You give it the domain name of the site you're generating a password for, and it gives you back an MD5 hash for a password. The tool uses a sanitized version of the domain name along with a salt set in the source code to produce its passwords. This setup makes it convenient for organizations to generate complex and secure passwords using a simple web form.

cf-password-generator works in:
  * Adobe ColdFusion 9
  * Railo 3.2
  * Open BlueDragon 1.4
