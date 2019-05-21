.class final Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$2;
.super Ljava/lang/Object;
.source "AsyncStreamConfig.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->createFuture(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Landroid/view/Surface;",
        "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$surfaceGroupId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$2;->val$surfaceGroupId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 136
    check-cast p1, Landroid/view/Surface;

    .line 1140
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$2;->val$surfaceGroupId:I

    invoke-direct {v0, v1, p1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;-><init>(ILandroid/view/Surface;)V

    .line 136
    return-object v0
.end method
