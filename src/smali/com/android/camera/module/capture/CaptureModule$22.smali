.class final Lcom/android/camera/module/capture/CaptureModule$22;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->checkIsSufficientStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$22;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1233
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1222
    check-cast p1, Ljava/lang/Long;

    .line 2227
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$22;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$2902(Lcom/android/camera/module/capture/CaptureModule;Z)Z

    .line 1222
    :cond_0
    return-void
.end method
