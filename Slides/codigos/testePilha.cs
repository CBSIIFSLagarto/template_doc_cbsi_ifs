[Test]
public void TestPilha()
{
	int[] valores = new int[] { 1, 2, 3, 4 };
	Pilha<int> pilha = new Pilha<int>();
	pilha.IsEmpty().Should().BeTrue();
	foreach (int i in valores)
	{
		pilha.Push(i);
	}
	pilha.IsEmpty().Should().BeFalse();
	int total = 0;
	for (int i = 3; i>=0; i--)
	{
		var r = pilha.Pop();
		total += r;
		r.Should().Be(valores[i]);
	}
	total.Should().Be(10);
	pilha.IsEmpty().Should().BeTrue();
}   
