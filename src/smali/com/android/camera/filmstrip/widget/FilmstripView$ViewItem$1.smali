.class final Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$200(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Lcom/android/camera/filmstrip/widget/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 426
    return-void
.end method
