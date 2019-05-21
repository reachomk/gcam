.class public final Lcom/android/camera/module/SimpleModuleAgent;
.super Ljava/lang/Object;
.source "SimpleModuleAgent.java"

# interfaces
.implements Lcom/android/camera/module/ModuleManager$ModuleAgent;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

.field private final moduleController:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "SimpleModuleAgent"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/SimpleModuleAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/module/SimpleModuleAgent;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 20
    iput-object p2, p0, Lcom/android/camera/module/SimpleModuleAgent;->moduleController:Ljavax/inject/Provider;

    .line 21
    return-void
.end method


# virtual methods
.method public final createModule()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v1, Lcom/android/camera/module/SimpleModuleAgent;->TAG:Ljava/lang/String;

    const-string v2, "Creating module: "

    .line 1025
    iget-object v0, p0, Lcom/android/camera/module/SimpleModuleAgent;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    .line 30
    invoke-virtual {v0}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/module/SimpleModuleAgent;->moduleController:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/module/SimpleModuleAgent;->moduleConfig$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNKQRR4ELM6AJB1DPGMEPBI4H6MUP3LDHIK6RRECPKMEEO_:Lcom/android/camera/ui/DetailsDialog;

    return-object v0
.end method
