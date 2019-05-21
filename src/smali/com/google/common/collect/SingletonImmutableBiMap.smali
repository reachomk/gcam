.class final Lcom/google/common/collect/SingletonImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SingletonImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 39
    invoke-static {p1, p2}, Lcom/google/common/collect/Platform;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 47
    iput-object p3, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 48
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/common/collect/SingletonImmutableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 95
    :cond_0
    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
