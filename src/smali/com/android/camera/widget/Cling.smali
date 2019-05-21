.class public Lcom/android/camera/widget/Cling;
.super Landroid/widget/TextView;
.source "Cling.java"


# instance fields
.field private delayDrawingUntilNextLayout:Z

.field private final layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final location:[I

.field private referenceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->location:[I

    .line 19
    new-instance v0, Lcom/android/camera/widget/Cling$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Cling$1;-><init>(Lcom/android/camera/widget/Cling;)V

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->delayDrawingUntilNextLayout:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->location:[I

    .line 19
    new-instance v0, Lcom/android/camera/widget/Cling$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Cling$1;-><init>(Lcom/android/camera/widget/Cling;)V

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->delayDrawingUntilNextLayout:Z

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/Cling;Z)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->delayDrawingUntilNextLayout:Z

    return v0
.end method


# virtual methods
.method public final adjustPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->location:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->location:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/android/camera/widget/Cling;->location:[I

    aget v1, v1, v4

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 82
    iget-object v2, p0, Lcom/android/camera/widget/Cling;->location:[I

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Cling;->getLocationInWindow([I)V

    .line 83
    iget-object v2, p0, Lcom/android/camera/widget/Cling;->location:[I

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 84
    iget-object v3, p0, Lcom/android/camera/widget/Cling;->location:[I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 86
    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/Cling;->setTranslationX(F)V

    .line 87
    sub-int v0, v1, v3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/Cling;->setTranslationY(F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/widget/Cling;->delayDrawingUntilNextLayout:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final setReferenceView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/Cling;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/widget/Cling;->referenceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/Cling;->delayDrawingUntilNextLayout:Z

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    goto :goto_0
.end method
