.class public Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# instance fields
.field entries:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field entriesUsed:Z

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2171
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/Platform;-><init>(I)V

    .line 2172
    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    new-array v0, p1, [Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v0, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 2177
    iput v1, p0, Lcom/google/common/collect/Platform;->size:I

    .line 2178
    iput-boolean v1, p0, Lcom/google/common/collect/Platform;->entriesUsed:Z

    .line 2179
    return-void
.end method

.method static checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1031
    if-nez p0, :cond_0

    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "null key in entry: null="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_0
    if-nez p1, :cond_1

    .line 1034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "null value in entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_1
    return-void
.end method

.method static checkNonnegative(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 1040
    if-gez p0, :cond_0

    .line 1041
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be negative but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_0
    return p0
.end method

.method static checkRemove(Z)V
    .locals 1

    .prologue
    .line 1065
    const-string v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 1066
    return-void
.end method

.method static closedTableSize(ID)I
    .locals 6

    .prologue
    .line 2058
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2059
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 2061
    const-wide v2, 0x3ff3333333333333L    # 1.2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-le v1, v2, :cond_0

    .line 2062
    shl-int/lit8 v0, v0, 0x1

    .line 2063
    if-lez v0, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return v0

    .line 2063
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 2

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    iget-object v1, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v1, v1

    .line 2185
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    .line 2184
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v0, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 2186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Platform;->entriesUsed:Z

    .line 2188
    :cond_0
    return-void
.end method

.method static smear(I)I
    .locals 3

    .prologue
    .line 2046
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2050
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Platform;->smear(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2275
    iget v1, p0, Lcom/google/common/collect/Platform;->size:I

    packed-switch v1, :pswitch_data_0

    .line 2298
    iget v1, p0, Lcom/google/common/collect/Platform;->size:I

    iget-object v2, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/common/collect/Platform;->entriesUsed:Z

    .line 2299
    iget v0, p0, Lcom/google/common/collect/Platform;->size:I

    iget-object v1, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4042
    :pswitch_0
    sget-object v0, Lcom/google/common/collect/RegularImmutableBiMap;->EMPTY:Lcom/google/common/collect/RegularImmutableBiMap;

    goto :goto_0

    .line 2279
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4069
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    goto :goto_0

    .line 2275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public put$5166KOBMC4NMOOBECSNKUOJACLHN8EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM6RRCDHIM6T1F95MMQTBKC5H6OPADC5O28GJLD5M68PBI7C______(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Platform;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/Platform;"
        }
    .end annotation

    .prologue
    .line 2196
    iget v0, p0, Lcom/google/common/collect/Platform;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/Platform;->ensureCapacity(I)V

    .line 2197
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v0

    .line 2199
    iget-object v1, p0, Lcom/google/common/collect/Platform;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v2, p0, Lcom/google/common/collect/Platform;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/Platform;->size:I

    aput-object v0, v1, v2

    .line 2200
    return-object p0
.end method
