.class final Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;
.super Landroid/widget/TextView;
.source "RGBZFocusControls.java"

# interfaces
.implements Lcom/android/camera/ui/motion/Invalidator;
.implements Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClingView"
.end annotation


# instance fields
.field private final bottomTrianglePath:Landroid/graphics/Path;

.field private clingHeight:I

.field private clingPositionUndefined:Z

.field private final padding:I

.field private synthetic this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

.field private final topRect:Landroid/graphics/drawable/Drawable;

.field private final triangleHeight:I

.field private final trianglePaint:Landroid/graphics/Paint;

.field private final triangleWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    .line 125
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->trianglePaint:Landroid/graphics/Paint;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingPositionUndefined:Z

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->topRect:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleWidth:I

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->padding:I

    .line 132
    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->setText(I)V

    .line 133
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->padding:I

    iget v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->padding:I

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->padding:I

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->padding:I

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->setPadding(IIII)V

    .line 134
    const v0, 0x7f0e0028

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->setTextAppearance(Landroid/content/Context;I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->trianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->trianglePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingPositionUndefined:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->topRect:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->trianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 142
    sub-int v0, p4, p2

    .line 143
    sub-int v1, p5, p3

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->topRect:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleHeight:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iput v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    .line 146
    return-void
.end method

.method public final onSliderDotPositionUpdated(I)V
    .locals 5

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingPositionUndefined:Z

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$000(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$100(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v2}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$000(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$000(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->setTranslationX(F)V

    .line 166
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->triangleHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->bottomTrianglePath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->clingHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;->invalidate()V

    .line 173
    return-void
.end method
