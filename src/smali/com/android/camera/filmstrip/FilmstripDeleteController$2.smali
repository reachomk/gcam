.class final Lcom/android/camera/filmstrip/FilmstripDeleteController$2;
.super Ljava/lang/Object;
.source "FilmstripDeleteController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/FilmstripDeleteController;
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
    .line 131
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-static {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->access$100(Lcom/android/camera/filmstrip/FilmstripDeleteController;Z)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-static {v1}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->access$300(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    .line 137
    invoke-static {v2}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->access$200(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;->this$0:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-static {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->access$400(Lcom/android/camera/filmstrip/FilmstripDeleteController;Z)V

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
