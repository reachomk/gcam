.class final Lcom/android/camera/filmstrip/FilmstripDeleteController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilmstripDeleteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/FilmstripDeleteController;->hideUndoDeletionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/FilmstripDeleteController;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$1;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$1;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-static {v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->access$000(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    return-void
.end method
