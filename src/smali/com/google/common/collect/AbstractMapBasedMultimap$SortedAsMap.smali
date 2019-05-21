.class final Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.AsMap;",
        "Ljava/util/SortedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private sortedKeySet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 1399
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 1400
    return-void
.end method

.method private createKeySet()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1448
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 8403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1448
    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1408
    .line 2403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1408
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1413
    .line 3403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1413
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 5403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1423
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1396
    .line 8442
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    .line 8443
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1418
    .line 4403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1418
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1428
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 6403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1428
    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 7403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1433
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
