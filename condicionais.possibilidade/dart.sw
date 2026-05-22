String pagamento = "pix";

switch (pagamento) {
  case "pix":
    print("Pagamento instantâneo");
    break;

  case "cartao":
    print("Pagamento no cartão");
    break;

  case "dinheiro":
    print("Pagamento em espécie");
    break;

  default:
    print("Método inválido");
}