.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$2;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;->requestLoad(Lcom/google/android/apps/camera/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$qtask:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$2;->val$qtask:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$2;->val$qtask:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->cancel(Z)Z

    .line 131
    return-void
.end method
