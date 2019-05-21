.class final Lcom/android/camera/remote/WearRemoteShutterListener$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "WearRemoteShutterListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/remote/WearRemoteShutterListener;->onPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<[B>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/remote/WearRemoteShutterListener;


# direct methods
.method constructor <init>(Lcom/android/camera/remote/WearRemoteShutterListener;II)V
    .locals 1

    .prologue
    const/16 v0, 0x140

    .line 152
    iput-object p1, p0, Lcom/android/camera/remote/WearRemoteShutterListener$2;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    .prologue
    .line 152
    check-cast p1, [B

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener$2;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Asset;->createFromBytes([B)Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/remote/WearRemoteShutterListener;->access$100(Lcom/android/camera/remote/WearRemoteShutterListener;Lcom/google/android/gms/wearable/Asset;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    invoke-static {}, Lcom/android/camera/remote/WearRemoteShutterListener;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error setting thumbnail data item"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
