use strict;
use warnings;

#下面是常见的替换规则
my %apl_symbols = (
    '⍝' => '#',   # 注释符号
    '⍴' =>  'p',   # 形状符号
    '⌹' => '\\',  # 矩阵求逆符号
    '⍟' => '**',  # 指数符号
    '⍲' => '&&',  # 逻辑NAND符号
    '⍱' => '||',  # 逻辑NOR符号
    '←' => '<-'
);

my $input_text = q/
    This is some APL code with ⍝ comments and ⍴shape symbol.
    APL code: ⌹X ← Y ⍟ Z
    More APL symbols: ⍲X ⍱Y
/;


foreach my $symbol (keys %apl_symbols) {
    my $replacement = $apl_symbols{$symbol};
    $input_text =~ s/\Q$symbol\E/$replacement/g;
}

# 输出替换后的文本
print $input_text;