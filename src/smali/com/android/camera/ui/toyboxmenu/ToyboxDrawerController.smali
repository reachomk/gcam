.class public final Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;
.super Ljava/lang/Object;
.source "ToyboxDrawerController.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;
    }
.end annotation


# instance fields
.field private final captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

.field private final drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerState:I

.field private final listView:Landroid/widget/ListView;

.field private listener:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;

.field private final optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

.field private final photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

.field private final previewScrim:Landroid/view/View;

.field private final toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

.field private final toyboxMenuItemAdapter:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;

.field private final videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerLayout;Landroid/widget/ListView;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Lcom/android/camera/ui/PhotoVideoPaginator;Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerState:I

    .line 58
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CaptureStatechart;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    .line 59
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    .line 60
    iput-object p5, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    .line 61
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PhotoVideoPaginator;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 62
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->listView:Landroid/widget/ListView;

    .line 64
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->toyboxMenuItemAdapter:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->toyboxMenuItemAdapter:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->previewScrim:Landroid/view/View;

    .line 69
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 74
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    new-instance v1, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$1;-><init>(Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final closeDrawer()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerState:I

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public final isDrawerOpen()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->onDrawerClosed()V

    .line 160
    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 153
    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PhotoVideoPaginator;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    sub-float v1, v3, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setAlpha(F)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    sub-float v1, v3, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setAlpha(F)V

    .line 131
    cmpl-float v0, p2, v3

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PhotoVideoPaginator;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setVisibility(I)V

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->previewScrim:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->toyboxMenuButton:Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setProgress(F)V

    .line 147
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0}, Lcom/android/camera/ui/PhotoVideoPaginator;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PhotoVideoPaginator;->setVisibility(I)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->optionsBarWidget:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerState:I

    .line 165
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/CameraMode;

    .line 171
    invoke-virtual {v0}, Lcom/android/camera/util/CameraMode;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->listener:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;->onToyboxModeSelected(Lcom/android/camera/util/CameraMode;)V

    .line 191
    return-void

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->startPhotoSphere()V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->startPanorama()V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->startLensBlur()V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/statecharts/StateBase;->startSlowMo()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final openDrawer()V
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerState:I

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method

.method public final setListener(Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->listener:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController$Listener;

    .line 90
    return-void
.end method
