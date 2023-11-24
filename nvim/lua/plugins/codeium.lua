return {
  -- eyJhbGciOiJSUzI1NiIsImtpZCI6ImYyZTgyNzMyYjk3MWExMzVjZjE0MTZlOGI0NmRhZTA0ZDgwODk0ZTciLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiSGFmaXogQW5zaCIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NKeGtDb3JjQkRUbFdzWlRRcVhERWltYzU2eEJLOTFnYTcwYS1LVGJnWHlhYnM9czk2LWMiLCJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZXhhMi1mYjE3MCIsImF1ZCI6ImV4YTItZmIxNzAiLCJhdXRoX3RpbWUiOjE2OTY5MzYzODcsInVzZXJfaWQiOiJjMTk3NnlPdkpNZWMzODg1YTVlTWViOTl1dncyIiwic3ViIjoiYzE5NzZ5T3ZKTWVjMzg4NWE1ZU1lYjk5dXZ3MiIsImlhdCI6MTY5NzUzMjgzMiwiZXhwIjoxNjk3NTM2NDMyLCJlbWFpbCI6Im11aGFtbWFkaGFmaWV6ODZAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZ29vZ2xlLmNvbSI6WyIxMDg3NzM2NDE3MzIyMzE4MDIzODIiXSwiZW1haWwiOlsibXVoYW1tYWRoYWZpZXo4NkBnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJnb29nbGUuY29tIn19.NEtmd-U1VmSWKRKE6LhF-5qeGSfIprWs-0i7Pyz1AYHbH03tx9AZouv-h-ek1C4h1pSDTKE3k6lbkxuVrGV8plv8PkZeW2AV144mASnWeLbIyFJDNRUo_4GiAP75pv_xRK9vTDYZJloQ7gLdqfHFh48dRrh-7CR_q3rsIe5e6crKujDeU2d5ZAQz2Pmv12U4AytwPejkooUtC9Na18udCn4o36yEsX5uZb_QzJLxTDvQvfJJfAXtsEQ38pYTC-HvEXgh1Hx4k4VlPeCFEovIK9GX7S68BGaftyEGpXEugTjWx41wDx6-Iie0Sz43WPTvztLMj80zsHkNK-8hzmI_yQ
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    vim.keymap.set("i", "<Tab>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
}
