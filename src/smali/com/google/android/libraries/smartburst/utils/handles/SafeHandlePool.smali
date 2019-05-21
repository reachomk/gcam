.class public final Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;
.super Ljava/lang/Object;
.source "SafeHandlePool.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->mHandles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->mHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    .line 71
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    .line 1065
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->mHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SafeHandlePool[count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final track(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            ">(TT;)",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->safeTo(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->trackHandle(Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v0

    return-object v0
.end method

.method public final trackHandle(Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            "THandle::",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
            "<TT;>;>(TTHandle;)TTHandle;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandlePool;->mHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object p1
.end method
