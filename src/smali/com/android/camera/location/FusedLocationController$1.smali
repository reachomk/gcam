.class final Lcom/android/camera/location/FusedLocationController$1;
.super Landroid/os/AsyncTask;
.source "FusedLocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/location/FusedLocationController;->recordLocation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/location/FusedLocationController;

.field private synthetic val$recordLocation:Z


# direct methods
.method constructor <init>(Lcom/android/camera/location/FusedLocationController;Z)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    iput-boolean p2, p0, Lcom/android/camera/location/FusedLocationController$1;->val$recordLocation:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    .line 2238
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$000(Lcom/android/camera/location/FusedLocationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$100(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Boolean;

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    iget-boolean v1, p0, Lcom/android/camera/location/FusedLocationController$1;->val$recordLocation:Z

    invoke-static {v0, v1}, Lcom/android/camera/location/FusedLocationController;->access$202(Lcom/android/camera/location/FusedLocationController;Z)Z

    .line 1245
    iget-boolean v0, p0, Lcom/android/camera/location/FusedLocationController$1;->val$recordLocation:Z

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$300(Lcom/android/camera/location/FusedLocationController;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$300(Lcom/android/camera/location/FusedLocationController;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 1253
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$400(Lcom/android/camera/location/FusedLocationController;)V

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController$1;->this$0:Lcom/android/camera/location/FusedLocationController;

    invoke-static {v0}, Lcom/android/camera/location/FusedLocationController;->access$500(Lcom/android/camera/location/FusedLocationController;)V

    goto :goto_0

    .line 1256
    :cond_2
    invoke-static {}, Lcom/android/camera/location/FusedLocationController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Location services not enabled, ignoring location request"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
