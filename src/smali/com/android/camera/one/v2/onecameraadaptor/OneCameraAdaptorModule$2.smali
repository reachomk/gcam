.class final Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$2;
.super Ljava/lang/Object;
.source "OneCameraAdaptorModule.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$2;->val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$2;->val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method
