.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$1;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;->requestRemoveDeleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$task:Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$1;->val$task:Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$1;->val$task:Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->cancel(Z)Z

    .line 119
    return-void
.end method
