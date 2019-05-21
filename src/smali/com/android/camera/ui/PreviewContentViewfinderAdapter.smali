.class public final Lcom/android/camera/ui/PreviewContentViewfinderAdapter;
.super Lcom/android/camera/ui/PreviewContentNoOp;
.source "PreviewContentViewfinderAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/viewfinder/Viewfinder;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewContentNoOp;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public final onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/camera/ui/PreviewContentNoOp;->onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
