.class public final Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;
.super Lcom/android/camera/ui/AbstractTutorialOverlay;
.source "LightCycleTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;
    }
.end annotation


# instance fields
.field private currentSlide:I

.field private nextButton:Landroid/widget/Button;

.field private rootView:Landroid/view/View;

.field private final slides:[Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;)V
    .locals 6

    .prologue
    .line 53
    const v0, 0x7f04005c

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/AbstractTutorialOverlay;-><init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;)V

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    const v3, 0x7f0a01ef

    const v4, 0x7f11014d

    const v5, 0x7f0a026d

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;-><init>(III)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->slides:[Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    .line 54
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->gotoNextSlide()V

    return-void
.end method

.method private final gotoNextSlide()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->currentSlide:I

    add-int/lit8 v0, v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->slides:[Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->closeAndComplete()V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->currentSlide:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->gotoSlide(I)V

    goto :goto_0
.end method

.method private final gotoSlide(I)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->slides:[Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    iget v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->currentSlide:I

    aget-object v0, v0, v1

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->rootView:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;->access$000(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->slides:[Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;

    aget-object v0, v0, p1

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->rootView:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;->access$000(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;->access$100(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;->access$200(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$Slide;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 87
    iput p1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->currentSlide:I

    .line 88
    return-void
.end method


# virtual methods
.method protected final onInflated(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->rootView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->rootView:Landroid/view/View;

    const v1, 0x7f11014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->titleView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->rootView:Landroid/view/View;

    const v1, 0x7f11014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->nextButton:Landroid/widget/Button;

    .line 1109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay$1;-><init>(Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/LightCycleTutorialOverlay;->gotoSlide(I)V

    .line 68
    return-void
.end method
