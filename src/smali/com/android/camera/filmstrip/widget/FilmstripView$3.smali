.class final Lcom/android/camera/filmstrip/widget/FilmstripView$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
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
    .line 1756
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 1780
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripItemInserted()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1787
    :goto_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataFocusChanged$514KIAAM(I)V

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2100(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1791
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2200(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1792
    return-void

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1800(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    goto :goto_0
.end method

.method public final onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 3

    .prologue
    .line 1796
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripItemRemoved()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2300(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V

    .line 1798
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataFocusChanged$514KIAAM(I)V

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1802
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2100(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1803
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$2200(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1804
    return-void
.end method

.method public final onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 2

    .prologue
    .line 1774
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripItemUpdated()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1700(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 1776
    return-void
.end method

.method public final onFilmstripItemsLoaded()V
    .locals 2

    .prologue
    .line 1759
    invoke-static {}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripItemsLoaded()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 1763
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 1764
    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripController;->getCaptureIndicatorBitmapOrNull()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1765
    if-eqz v0, :cond_0

    .line 1766
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderPlaceholderIntoFirstItem(Landroid/graphics/Bitmap;)V

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$3;->this$0:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->access$1600(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1770
    return-void
.end method
