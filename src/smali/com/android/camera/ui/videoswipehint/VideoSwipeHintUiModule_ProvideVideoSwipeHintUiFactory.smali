.class public final Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory;
.super Ljava/lang/Object;
.source "VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory.java"

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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory;->videoSwipeHintUiProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1021
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiModule_ProvideVideoSwipeHintUiFactory;->videoSwipeHintUiProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideVideoSwipeHintUi$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5I6ARRJETKN0PB8D5N78BQMD5I6ARQJETKN0PA8D5N78LB995MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5I6ARRJETKN0PB8D5N78BQMD5I6ARQJETKN0PA8D5N78LB97C______(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;

    .line 8
    return-object v0
.end method
