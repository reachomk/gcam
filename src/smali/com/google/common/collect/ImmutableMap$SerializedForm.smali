.class Lcom/google/common/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final keys:[Ljava/lang/Object;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    .line 646
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    .line 647
    const/4 v0, 0x0

    .line 648
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 650
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    .line 651
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 652
    goto :goto_0

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method final createMap$51666RRD5TJMURR7DHIIUORFDLMMURHFCDNMOR35CDQ2UIBDDLQN8OB2DHIKQOBG4H17AQBCCHIN4EP99HL62TJ15TM62RJ75T7M4QJ5CDQ3M___(Lcom/google/common/collect/Platform;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Platform;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/common/collect/Platform;->put$5166KOBMC4NMOOBECSNKUOJACLHN8EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM6RRCDHIM6T1F95MMQTBKC5H6OPADC5O28GJLD5M68PBI7C______(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Platform;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/Platform;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 656
    new-instance v0, Lcom/google/common/collect/Platform;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Platform;-><init>(I)V

    .line 657
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$SerializedForm;->createMap$51666RRD5TJMURR7DHIIUORFDLMMURHFCDNMOR35CDQ2UIBDDLQN8OB2DHIKQOBG4H17AQBCCHIN4EP99HL62TJ15TM62RJ75T7M4QJ5CDQ3M___(Lcom/google/common/collect/Platform;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
