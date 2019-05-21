.class final Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RefocusBokehControlBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;->this$0:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;->this$0:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->access$000(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    float-to-int v1, p3

    sub-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;->this$0:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    invoke-static {v1, v0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->access$100(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;I)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
