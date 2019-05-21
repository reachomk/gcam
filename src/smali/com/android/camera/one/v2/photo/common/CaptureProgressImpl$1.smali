.class final Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;
.super Ljava/lang/Object;
.source "CaptureProgressImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->createExposureIndicator()Lcom/google/android/apps/camera/async/Updatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    .line 1071
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->access$600(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1$1;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
