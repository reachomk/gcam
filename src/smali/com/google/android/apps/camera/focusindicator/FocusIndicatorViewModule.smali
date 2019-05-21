.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;
.super Ljava/lang/Object;
.source "FocusIndicatorViewModule.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final debugChipTextView:Landroid/widget/TextView;

.field private final lockChipTextView:Landroid/widget/TextView;

.field private final resources:Landroid/content/res/Resources;

.field private final ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->resources:Landroid/content/res/Resources;

    .line 25
    const v0, 0x7f110109

    .line 26
    invoke-virtual {p2, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    .line 27
    const v0, 0x7f11010a

    invoke-virtual {p2, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->lockChipTextView:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f11010b

    .line 29
    invoke-virtual {p2, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->debugChipTextView:Landroid/widget/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public final provideContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final provideDebugChipView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->debugChipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final provideFocusIndicatorChipView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->lockChipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final provideFocusIndicatorView()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    return-object v0
.end method

.method public final provideFocusIndicatorViewDrawer()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getDrawer()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    move-result-object v0

    return-object v0
.end method

.method public final provideResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;->resources:Landroid/content/res/Resources;

    return-object v0
.end method
