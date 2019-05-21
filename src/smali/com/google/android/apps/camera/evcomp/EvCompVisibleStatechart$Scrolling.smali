.class Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompVisibleStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scrolling"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[I)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawMarker(Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawAffordance(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawRuler(Z)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$700(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$800$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6ISR9C9M6AKRKC5Q6AOR8C5P78EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$800$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6ISR9C9M6AKRKC5Q6AOR8C5P78EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public onFingerUp()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final onScroll(F)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Scrolling;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$600(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;F)V

    .line 104
    return-void
.end method
