.class public final Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;
.super Ljava/lang/Object;
.source "GservicesModule_ProvideGservicesHelperFactory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED6MUP3LDHIJM___:Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;

    .line 26
    iput-object p2, p0, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/config/GservicesModule_ProvideGservicesHelperFactory;->apiHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ApiHelper;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;->provideGservicesHelper$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBQ1E1KKGPBCE1IN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___(Landroid/content/ContentResolver;Lcom/android/camera/util/ApiHelper;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 10
    return-object v0
.end method
