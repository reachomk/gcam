.class final Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)V
    .locals 0

    .prologue
    .line 2741
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$2;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$2;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;->access$5200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->onScrollUpdate$514KIAAM(I)V

    .line 2745
    return-void
.end method
