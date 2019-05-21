.class public Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;
.super Landroid/view/View;
.source "RefocusBokehControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;,
        Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;
    }
.end annotation


# instance fields
.field private final barEnd:Landroid/graphics/Point;

.field private final barStart:Landroid/graphics/Point;

.field private final dot:Landroid/graphics/drawable/Drawable;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final halfSize:I

.field private listener:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;

.field private final padding:I

.field private final paint:Landroid/graphics/Paint;

.field private percentage:F

.field private sliderDotPositionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->paint:Landroid/graphics/Paint;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->listener:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$1;-><init>(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->padding:I

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->halfSize:I

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->dot:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->paint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->dot:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->slideTo(I)V

    return-void
.end method

.method private final slideTo(I)V
    .locals 3

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 153
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 157
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->clamp(FFF)F

    move-result v0

    .line 158
    iget v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 159
    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->updateDotIndicator()V

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->listener:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->listener:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;->onBokehChanged(F)V

    goto :goto_0
.end method

.method private final updateDotIndicator()V
    .locals 7

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 115
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->dot:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->halfSize:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->halfSize:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->halfSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->halfSize:I

    add-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;

    .line 119
    invoke-interface {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;->onSliderDotPositionUpdated(I)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public final addSliderUpdateListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 1202
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;

    .line 1203
    invoke-interface {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;->onSliderDotPositionUpdated(I)V

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 92
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    sub-int v0, p4, p2

    .line 97
    sub-int v1, p5, p3

    .line 100
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barStart:Landroid/graphics/Point;

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->padding:I

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v4, v1, 0x0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->barEnd:Landroid/graphics/Point;

    iget v3, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->padding:I

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->updateDotIndicator()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->slideTo(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public final removeSliderUpdateListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->sliderDotPositionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public final setBokehChangedListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->listener:Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-interface {p1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;->getCurrentBokeh()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->percentage:F

    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->updateDotIndicator()V

    .line 179
    :cond_0
    return-void
.end method
