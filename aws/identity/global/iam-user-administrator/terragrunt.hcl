include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragossutu/terraform-modules.git//aws/iam?ref=v0.7.3"
}

inputs = {
  groups = [
    {
      name: "administrators",
      policies_names_aws_managed: [
        "IAMFullAccess",
      ],
      policies_names_customer_managed: [
        "cross-accounts-administrator"
      ],
    }
  ]

  policies = [
    {
      description: "Allows AssumeRole administratorAccess in managed accounts",
      name: "cross-accounts-administrator",
      resources = [
        "arn:aws:iam::*:role/administratorAccess",
      ]
    }
  ]

  users = [
    {
      groups_names: [
        "administrators",
      ],
      login_profile: true,
      name: "",
      pgp_key: "mQENBF6gpgEBCACpeslQP0rMgxRrg9XFPQVSmSxAYHkf1I/MrzoITFZFazBAjJ034bRSRFqf/ZSYCXIxDky0Fwdr/wzeEDEj7qr4UxktQI5j54ay5/Xk0BmryKugBUAnJCNz01Y7jVON0HY04B35TJzRp/KbSZWuK+V1lVC8tXV23syaAhTots3H96MfwP5m5b31r92NSLHAakRM0ex5nCWZb1o/L4Y4+dYcKOdN4jL40HEdJFuH9s6PeKK98QXEgto4T6iLLMrWwbc7osDijvibleGBZlrJNZ+WpIl2dmzdhkozR+GL8Xgx8JQAA4Tpkut+7Pw6nWyzlGwg1Ff50u0LxcOa8aTMPxTvABEBAAG0H21hY2Vkb24gPG1hY2Vkb24xNjE4QGdtYWlsLmNvbT6JAVQEEwEIAD4WIQQWFxcxvDP6r+7K1aur/kj1+x4FlQUCXqCmAQIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCr/kj1+x4FlWV8B/9W/Ikb+7TdTiWx85dLPhCs0ojNZQTLVMw6pF8px0yTnRs3Fy8TnX/iEgEEch7icGB9ekvdh2/6TOnBtsZISCOBxePUWs7AsaGjVjYwt2ORr3WYPjyPPQBII+zMvmDx9yOrus+kKMTIRv4lMDpeCvBlJGUG8ALoJGcZTD5puE1Q/Y//Plc1VnQyD2KqItkqEdnVo1P2+GvJWLEGNDeObT/0nHtJTZg+5U8YrpI6lmAtOrd+GQqMcELF+n7UT59Qhllx2JQd06dNNUl2VrKaW/0HWtQs83jcag9EfwVs2FhjQFXYcFVldZk0BPMnGXltUzwT0cLnie4VhMfdwZilkBsBuQENBF6gpgEBCADDzz1741HtMdDgrpXPC6wMwKesd6YfJlAkIMxcAkcM+mxw/fTSg0MSzx0no83gDO7qnXh/OLgrHaQFS4ZiXAClvdqAo4MMrzrobKqR2oLvHHXJ+SQpMxCn04S4GAHe1eZ3Zw+CSUeHbb248nz9vLseEDBUgYDRQlUutYUp335bQr1iiuX38cUps7jbKPJwMxmKU6/zLxb1yooZc00WPG9KB5WcwSsDNOj991WV28HCmSgjf5tvnC5ddbrL/87fqtckMAWY3MOD0lzzdud6cKXAb+I+IUy3lg8T4tZPNoQX9zXM++IpvOFECUGeShsNgXYJhdIL9sFw2YmeGm7TloXhABEBAAGJATwEGAEIACYWIQQWFxcxvDP6r+7K1aur/kj1+x4FlQUCXqCmAQIbDAUJA8JnAAAKCRCr/kj1+x4FlVYmB/4nFzpooNI1BlpHB1YnczmBPqVSetNBfpUwiLXg1vaAT+2Z8u6rJMY7615o2izCFnrcVfj80Xbv7THHKGg97gQmPwcLM8Bh7NobATrC6pXCZnRi7TliBpSVYd1iRXxqY/OTv14qwGDXD7mtmds9TC+VEJNRJSSQgpdb2ebjtsxe9rzWjS/dwwIouZ927AKLbbJbZi5nAABS9gbJKuBbzOSP9/+PoUolO1v2bAEm6tLh2k4CZKv4eivSaYizxy4kzW3NesiGLBdEvLCWM7fdev3UfmrDbuMql675ippUX1EEoHv43scPa3PjpS77bz+w/InyhKwasJZMZp/3d/4s9lV5",
    },
  ]
}
