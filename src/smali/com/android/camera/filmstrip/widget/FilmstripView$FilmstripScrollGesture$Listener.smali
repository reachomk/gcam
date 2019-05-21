.class public Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V
    .locals 0

    .prologue
    .line 4125
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3140
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$2702(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)Z

    .line 3141
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd() - onScrollEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 3164
    :cond_0
    :goto_0
    return-void

    .line 3145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2800(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 3152
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[fling] onScrollEnd() - Ensuring that items are at full resolution."

    .line 3157
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    .line 3160
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    .line 3161
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    .line 3162
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$3000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    goto :goto_0
.end method

.method public onScrollUpdate$514KIAAM(I)V
    .locals 2

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2502(Lcom/android/camera/filmstrip/widget/FilmstripView;I)I

    .line 3130
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2600(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z

    move-result v0

    .line 3131
    if-eqz v0, :cond_0

    .line 3132
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[fling] onScrollUpdate() - stopScrolling!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 3135
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture$Listener;->this$1:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    iget-object v0, v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 3136
    return-void
.end method
