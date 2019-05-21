.class public final Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;
.super Ljava/lang/Object;
.source "VideoSwipeStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

.field private final videoSwipeHintUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;->videoSwipeHintUi:Ljavax/inject/Provider;

    .line 19
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;->videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    .line 20
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;->videoSwipeHintStatechart:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;->videoSwipeHintUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;->initialize(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)V

    .line 25
    return-void
.end method
