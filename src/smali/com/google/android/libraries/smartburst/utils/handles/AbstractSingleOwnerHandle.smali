.class public abstract Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;
.super Ljava/lang/Object;
.source "AbstractSingleOwnerHandle.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/handles/Handle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "DisposeException:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/handles/Handle",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mDisposeContext:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mDisposeContext:Lcom/google/common/util/concurrent/SettableFuture;

    .line 41
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->getInstance()Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->register(Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TDisposeException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->getInstance()Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->markDisposed(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->dispose(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final detach()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to interact with disposed value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->getInstance()Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/smartburst/utils/UndisposedObjectRegistry;->markDisposed(Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method

.method protected abstract dispose(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TDisposeException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to interact with disposed value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0

    .line 54
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "single-owner["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
