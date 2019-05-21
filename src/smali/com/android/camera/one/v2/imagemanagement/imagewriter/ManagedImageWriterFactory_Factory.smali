.class public final Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;
.super Ljava/lang/Object;
.source "ManagedImageWriterFactory_Factory.java"

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
.field private final handlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final imageCopierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/training/MetadataSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/training/MetadataSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->imageCopierProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/training/MetadataSerializer;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1038
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/HandlerFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->imageCopierProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;-><init>(Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/libraries/smartburst/training/MetadataSerializer;)V

    .line 11
    return-object v4
.end method
