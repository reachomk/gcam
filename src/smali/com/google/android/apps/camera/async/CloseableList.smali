.class public final Lcom/google/android/apps/camera/async/CloseableList;
.super Lcom/google/common/collect/ForwardingList;
.source "CloseableList.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Lcom/google/common/collect/ForwardingList",
        "<TT;>;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final delegate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingList;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 9039
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 10035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 9040
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    return-void

    .line 9039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 45
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 98
    invoke-interface {v1}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    .line 12035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 22
    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 22
    .line 11035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 22
    return-object v0
.end method

.method protected final delegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    .line 8049
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 9035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 8050
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 22
    return-object v0

    .line 8049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 2035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 3035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 4035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 5035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    .line 7076
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 8035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 7077
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 22
    return-object v0

    .line 7076
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 6081
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 7035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 6082
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 22
    return-object v0

    .line 6081
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 6035
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableList;->delegate:Ljava/util/ArrayList;

    .line 88
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
