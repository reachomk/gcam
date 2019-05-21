.class final Lcom/android/camera/filmstrip/widget/FilmstripView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;->init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UTR9CHJMAT1F8PKMORBJEHP6IS2MD5INE92GDHGNILJ9CHIMUIBEEHIMST1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUHJ9DHMN6T3ID5O5AQAJEHGN8PB3D1GN4T1R55B0____(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/app/AppController;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 764
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 766
    const-class v0, Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 767
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 768
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 769
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 770
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 774
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    sparse-switch p2, :sswitch_data_0

    .line 800
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 778
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->goToNextItem()Z

    goto :goto_0

    .line 783
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->goToPreviousItem()Z

    move-result v1

    .line 784
    if-nez v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraAppUI;->hideFilmstrip()V

    goto :goto_0

    .line 794
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 795
    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 775
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
