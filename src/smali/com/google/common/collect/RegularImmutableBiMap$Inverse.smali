.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;B)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Platform;->smear(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$200(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    .line 194
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v1, v2, v1

    .line 195
    :goto_1
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 176
    .line 2185
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    .line 176
    return-object v0
.end method

.method public final inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 180
    .line 1185
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    .line 180
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
