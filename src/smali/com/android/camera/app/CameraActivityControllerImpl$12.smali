.class final Lcom/android/camera/app/CameraActivityControllerImpl$12;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 1

    .prologue
    .line 2111
    if-nez p1, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3600(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2115
    return-void
.end method

.method public final onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 1

    .prologue
    .line 2119
    if-nez p1, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3600(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2123
    return-void
.end method

.method public final onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 1

    .prologue
    .line 2104
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2107
    :cond_0
    return-void
.end method

.method public final onFilmstripItemsLoaded()V
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$12;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2100
    return-void
.end method
