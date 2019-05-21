.class public final Lcom/android/camera/ui/videoswipehint/VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory;
.super Ljava/lang/Object;
.source "VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory.java"

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
.field private final hasSwipedToVideoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory;->hasSwipedToVideoProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1022
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintModule_ProvideVideoSwipeHintStatechartFactory;->hasSwipedToVideoProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideVideoSwipeHintStatechart$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB4CLNN6TR9E1IMGQBEEGNLCQB4CLNL6TR9E1IKGQBEEH9N8OBKCLHMGOBIEGTG____(Lcom/google/android/apps/camera/async/Observable;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    .line 9
    return-object v0
.end method
