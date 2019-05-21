.class final Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RoundedThumbnailOutlineProvider"
.end annotation


# instance fields
.field private final thumbnailShrinkDiameterEnd:F

.field private final viewRect:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(FLandroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 1123
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;->thumbnailShrinkDiameterEnd:F

    .line 1124
    iput-object p2, p0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;->viewRect:Landroid/graphics/RectF;

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(FLandroid/graphics/RectF;B)V
    .locals 0

    .prologue
    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;-><init>(FLandroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .prologue
    .line 1129
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;->thumbnailShrinkDiameterEnd:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1130
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    .line 1131
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    .line 1132
    sub-int v3, v1, v0

    sub-int v4, v2, v0

    add-int/2addr v1, v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v3, v4, v1, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 1133
    return-void
.end method
