.class final Lcom/android/camera/ui/viewfinder/ViewfinderImpl$1;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->getViewfinderSurface()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    check-cast p1, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 1102
    invoke-virtual {p1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->getSurfaceRequest()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 99
    return-object v0
.end method
