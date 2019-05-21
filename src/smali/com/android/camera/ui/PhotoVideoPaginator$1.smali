.class final Lcom/android/camera/ui/PhotoVideoPaginator$1;
.super Ljava/lang/Object;
.source "PhotoVideoPaginator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PhotoVideoPaginator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PhotoVideoPaginator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PhotoVideoPaginator;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/PhotoVideoPaginator$1;->this$0:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PhotoVideoPaginator$1;->this$0:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0}, Lcom/android/camera/ui/PhotoVideoPaginator;->invalidate()V

    .line 63
    return-void
.end method
