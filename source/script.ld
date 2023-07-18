ENTRY(start)

SECTIONS
{
	. = 0x7C00;

	.boot.sector.text :
	{
		*(.boot.sector)

	}
	
	.boot.sector.data :
	{
		*(.boot.sector.data)
	}

	.boot.sector.rodata :
	{
		*(.boot.sector.rodata)
	}

	.boot.sector.footer 0x7DFE :
	{
		SHORT(0xAA55)
	}

	. = 0x7E00;

	.boot.text :
	{
		*(.boot.text)
	}

	.boot.data :
	{
		*(.boot.data)
	}

	.boot.rodata :
	{
		*(.boot.rodata)
	}

	.boot.bss :
	{
		*(.boot.bss)
	}
}
