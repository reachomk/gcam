.class final Lcom/google/android/apps/camera/async/CloseableFutures$2;
.super Ljava/lang/Object;
.source "CloseableFutures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->allAsList(Ljava/util/List;)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$futures:Ljava/util/List;

.field private synthetic val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/apps/camera/async/SettableCloseableFuture;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$futures:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 107
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableFuture;

    .line 110
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v6

    and-int/2addr v3, v6

    .line 111
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    move v0, v4

    :goto_1
    move v1, v0

    .line 117
    goto :goto_0

    .line 119
    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableFuture;

    .line 122
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->close()V

    goto :goto_2

    .line 127
    :cond_2
    if-nez v3, :cond_4

    .line 148
    :cond_3
    :goto_3
    return-void

    .line 131
    :cond_4
    new-instance v3, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableFuture;

    .line 136
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 137
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v4

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 138
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->remove()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_6
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 147
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    throw v0

    :cond_5
    move v1, v2

    .line 137
    goto :goto_5

    .line 142
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$2;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_1
.end method
