.class Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/common/collect/SortedLists$KeyPresentBehavior;",
            "Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4260
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    .line 4265
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4269
    :cond_0
    const/4 v1, 0x0

    .line 4270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4272
    :goto_0
    if-gt v1, v0, :cond_3

    .line 4273
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 4274
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 4275
    if-gez v3, :cond_1

    .line 4276
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 4277
    :cond_1
    if-lez v3, :cond_2

    .line 4278
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 4280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4282
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    sub-int/2addr v2, v1

    .line 4281
    invoke-virtual {p3, p2, p1, v0, v2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 4285
    :goto_1
    return v0

    :cond_3
    invoke-virtual {p4, v1}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->resultIndex(I)I

    move-result v0

    goto :goto_1
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Ljava/util/SortedSet;

    .line 1053
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1054
    if-nez v0, :cond_0

    .line 1161
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_2

    .line 43
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 1842
    return-void
.end method

.method public bridge synthetic copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/google/common/collect/SortedIterables;->copyFor$5166KOBMC4NMOOBECSNN4PB65T96APJ5E9IMSOR5A5QMATB57D666RRD5TJMURR7DHIIUORFDLMMURHFCDNMOR35CDQ2UJB1E16M2QR5E94MST35E9N62R2DC5O28H3LDLMNIIBEEHIN4RJ1DH2MST3IF4TIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM6RRCDHIM6T1F9LGN0JB1DDIN4IBEEHIN4RJ1DH6M2S14ATIM2QQMC5M7APAICLJ6ASJ5DPHMAEO_()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    return-object v0
.end method

.method public copyFor$5166KOBMC4NMOOBECSNN4PB65T96APJ5E9IMSOR5A5QMATB57D666RRD5TJMURR7DHIIUORFDLMMURHFCDNMOR35CDQ2UJB1E16M2QR5E94MST35E9N62R2DC5O28H3LDLMNIIBEEHIN4RJ1DH2MST3IF4TIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM6RRCDHIM6T1F9LGN0JB1DDIN4IBEEHIN4RJ1DH6M2S14ATIM2QQMC5M7APAICLJ6ASJ5DPHMAEO_()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1852
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1846
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEntry()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .prologue
    .line 3835
    const/4 v0, 0x0

    return-object v0
.end method
