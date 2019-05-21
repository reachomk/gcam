.class public final Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "VideoSwipeStatechartInitializer_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final videoSwipeHintStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSwipeHintUiProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;->videoSwipeHintStatechartProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;->videoSwipeHintUiProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 7
    .line 1025
    new-instance v1, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;->videoSwipeHintStatechartProvider:Ljavax/inject/Provider;

    .line 1026
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer_Factory;->videoSwipeHintUiProvider:Ljavax/inject/Provider;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;-><init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;Ljavax/inject/Provider;)V

    .line 7
    return-object v1
.end method
