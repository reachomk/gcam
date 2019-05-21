.class final Lcom/android/camera/remote/WearRemoteShutterListener$1;
.super Ljava/lang/Object;
.source "WearRemoteShutterListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/remote/WearRemoteShutterListener;->onModuleExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/remote/WearRemoteShutterListener;


# direct methods
.method constructor <init>(Lcom/android/camera/remote/WearRemoteShutterListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/remote/WearRemoteShutterListener$1;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener$1;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-static {v0}, Lcom/android/camera/remote/WearRemoteShutterListener;->access$000(Lcom/android/camera/remote/WearRemoteShutterListener;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 138
    return-void
.end method
