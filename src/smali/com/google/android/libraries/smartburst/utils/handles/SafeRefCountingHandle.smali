.class public Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;
.super Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;
.source "SafeRefCountingHandle.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase",
        "<TT;",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
        "<TT;>;",
        "Ljava/lang/RuntimeException;",
        ">;",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;)V

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;->close()V

    .line 52
    return-void
.end method

.method protected final synthetic closeHandle(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    .line 1045
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 20
    return-void
.end method

.method public final bridge synthetic detach()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;->detach()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final newHandle()Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;)V

    return-object v0
.end method

.method public final bridge synthetic newHandle()Lcom/google/android/libraries/smartburst/utils/handles/SharedHandle;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeRefCountingHandle;->newHandle()Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
