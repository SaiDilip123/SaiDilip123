'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:2.0.50727.42
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On



Namespace Microsoft.Samples.Identity

    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "3.0.0.0"), _
     System.ServiceModel.ServiceContractAttribute([Namespace]:="http://Microsoft.Samples.Identity", ConfigurationName:="Microsoft.Samples.Identity.ICalculator")> _
    Public Interface ICalculator

        <System.ServiceModel.OperationContractAttribute(ProtectionLevel:=System.Net.Security.ProtectionLevel.EncryptAndSign, Action:="http://Microsoft.Samples.Identity/ICalculator/Add", ReplyAction:="http://Microsoft.Samples.Identity/ICalculator/AddResponse")> _
        Function Add(ByVal n1 As Double, ByVal n2 As Double) As Double

        <System.ServiceModel.OperationContractAttribute(ProtectionLevel:=System.Net.Security.ProtectionLevel.EncryptAndSign, Action:="http://Microsoft.Samples.Identity/ICalculator/Subtract", ReplyAction:="http://Microsoft.Samples.Identity/ICalculator/SubtractResponse")> _
        Function Subtract(ByVal n1 As Double, ByVal n2 As Double) As Double

        <System.ServiceModel.OperationContractAttribute(ProtectionLevel:=System.Net.Security.ProtectionLevel.EncryptAndSign, Action:="http://Microsoft.Samples.Identity/ICalculator/Multiply", ReplyAction:="http://Microsoft.Samples.Identity/ICalculator/MultiplyResponse")> _
        Function Multiply(ByVal n1 As Double, ByVal n2 As Double) As Double

        <System.ServiceModel.OperationContractAttribute(ProtectionLevel:=System.Net.Security.ProtectionLevel.EncryptAndSign, Action:="http://Microsoft.Samples.Identity/ICalculator/Divide", ReplyAction:="http://Microsoft.Samples.Identity/ICalculator/DivideResponse")> _
        Function Divide(ByVal n1 As Double, ByVal n2 As Double) As Double
    End Interface

    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "3.0.0.0")> _
    Public Interface ICalculatorChannel
        Inherits Microsoft.Samples.Identity.ICalculator, System.ServiceModel.IClientChannel
    End Interface

    <System.Diagnostics.DebuggerStepThroughAttribute(), _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "3.0.0.0")> _
    Partial Public Class CalculatorClient
        Inherits System.ServiceModel.ClientBase(Of Microsoft.Samples.Identity.ICalculator)
        Implements Microsoft.Samples.Identity.ICalculator

        Public Sub New()
            MyBase.New()
        End Sub

        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub

        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub

        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub

        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub

        Public Function Add(ByVal n1 As Double, ByVal n2 As Double) As Double Implements Microsoft.Samples.Identity.ICalculator.Add
            Return MyBase.Channel.Add(n1, n2)
        End Function

        Public Function Subtract(ByVal n1 As Double, ByVal n2 As Double) As Double Implements Microsoft.Samples.Identity.ICalculator.Subtract
            Return MyBase.Channel.Subtract(n1, n2)
        End Function

        Public Function Multiply(ByVal n1 As Double, ByVal n2 As Double) As Double Implements Microsoft.Samples.Identity.ICalculator.Multiply
            Return MyBase.Channel.Multiply(n1, n2)
        End Function

        Public Function Divide(ByVal n1 As Double, ByVal n2 As Double) As Double Implements Microsoft.Samples.Identity.ICalculator.Divide
            Return MyBase.Channel.Divide(n1, n2)
        End Function
    End Class
End Namespace
