.class final Lcom/android/camera/one/v2/core/ResponseListeners$1;
.super Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$callback:Lcom/google/android/apps/camera/async/Updatable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 1

    .prologue
    .line 47
    iput-object p2, p0, Lcom/android/camera/one/v2/core/ResponseListeners$1;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/google/android/apps/camera/async/Updatable;B)V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$1;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
