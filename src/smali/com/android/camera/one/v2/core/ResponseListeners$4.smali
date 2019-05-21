.class final Lcom/android/camera/one/v2/core/ResponseListeners$4;
.super Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$callback:Lcom/google/android/apps/camera/async/Updatable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 1

    .prologue
    .line 93
    iput-object p2, p0, Lcom/android/camera/one/v2/core/ResponseListeners$4;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/google/android/apps/camera/async/Updatable;B)V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$4;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 98
    return-void
.end method
