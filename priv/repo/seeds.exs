alias MmoneyApi.Repo
alias MmoneyApi.User

[
  %User{
    name: "Demo User",
    email: "demo@mmoney.app",
    password: nil
  }
] |> Enum.each(&Repo.insert!(&1))
