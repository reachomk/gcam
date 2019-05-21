.class final Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;
.super Ljava/lang/Object;
.source "ImageIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->access$000(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Lcom/android/camera/ui/ProgressOverlay;

    move-result-object v1

    .line 1111
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1112
    invoke-virtual {v1}, Lcom/android/camera/ui/ProgressOverlay;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1113
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1114
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1115
    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1116
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ProgressOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    .line 51
    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->access$100(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 60
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 61
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$1;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-static {v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->access$100(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method
